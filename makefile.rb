# frozen_string_literal: true
# typed: true

require "pathname"
require "semantic"
require "sorbet-runtime"

# https://github.com/sorbet/sorbet/issues/7170
# rubocop:disable Style/TrailingUnderscoreVariable

def aliases
  state = T.let({}, T::Hash[String, [Semantic::Version, String, String]])
  current_directory = Pathname.new(__dir__)

  input_directory = current_directory.join("Formula")
  input_directory.mkdir(0o700) unless input_directory.exist?

  input_directory.entries.each do |file|
    matched = file.basename.to_s.match(/([\S\s]*)@([\S\s]*)\.rb/)
    next unless matched

    matched_name = matched[1]
    next unless matched_name

    matched_version = matched[2]
    next unless matched_version

    version = Semantic::Version.new(matched_version)

    latest, _, _ = state[""]
    if latest.nil? || latest < version
      state[""] = [
        version,
        matched_name,
        "#{matched_name}@#{version}.rb"
      ]
    end

    string_major = version.major.to_s
    major, _, _ = state[string_major]
    if major.nil? || major < version
      state[string_major] = [
        version,
        "#{matched_name}@#{string_major}",
        "#{matched_name}@#{version}.rb"
      ]
    end

    string_minor = "#{version.major}.#{version.minor}"
    minor, _, _ = state[string_minor]
    if minor.nil? || minor < version
      state[string_minor] = [
        version,
        "#{matched_name}@#{string_minor}",
        "#{matched_name}@#{version}.rb"
      ]
    end
  end

  output_directory = current_directory.join("Aliases")
  output_directory.mkdir(0o700) unless output_directory.exist?

  state.each_value do |_, output_basename, intput_basename|
    output = output_directory.join(output_basename)
    output.delete if output.exist?
    input = input_directory.join(intput_basename)
    relative_input = input.relative_path_from(output_directory)
    output.make_symlink(relative_input)
  end
end

# rubocop:enable Style/TrailingUnderscoreVariable

if ARGV == ["aliases"]
  aliases
  return
end
