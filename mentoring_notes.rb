father_genetics = {agouti: 'A*', color: 'C*', dilute: 'D*', extension: 'E*', pinkeyed: 'P*', underwhite: 'Uw*'}
mother_genetics = {agouti: 'aa', color: 'C*', dilute: 'D*', extension: 'E*', pinkeyed: 'P*', underwhite: 'Uw*'}

f_allele1, f_allele2 = father_genetics[:agouti].split
m_allele1, m_allele2 = mother_genetics[:agouti].split

# examples = {genetics => color}
examples = {AaCcchmDdEePpUWuwd: :agouti,
            AACcchmDdEePpUwuwd: :agouti,
            AaCCDdEePpUwuwd: :agouti,
            AaCcchmDDEePpUwuwd: :agouti,
            AaCcchmDdEEPpWuwu: :agouti,
            AaCcchmDdEePPUwuwd: :agouti,
            AaCcchmDdEePpUwuwd: :agouti}

letter_variations = []
a_letters.each do |aletter|
  c_letters.each do |cletter|
    letter_variations << aletter + cletter
  end
end

# possible combinations: Aa, aa
# CC, Cc(chm), Cc(h), c(chm)c(chm), c(chm)c(h), c(h)c(h).
# DD, Dd, dd
# EE, Ee, Ee(f), ee, ee(f), e(f)e(f)

# combinations that actually matter:
# agouti: A*, aa
# color: CC, Cc(chm), Cc(h), c(chm)c(chm), c(chm)c(h), c(h)c(h).
# dilute: DD, Dd, dd
# UwUw, Uwuw(d), and uw(d)uw(d). Do not include the lowercase uwuw mutation.
# EE, Ee, Ee(f), ee, ee(f), e(f)e(f)




# aa C* dd ee pp uw[d]uw[d]

# Possible combinations:


# Combinations that matter:



class GerbilCalculator

  def initialize(mother, father)
    @mother = mother
    @father = father
  end
end

GENETIC_COMBINATIONS.values.uniq
ALL_POSSIBLE_COLORS = [
  AGOUTI = 'agouti',
]
GENETIC_COMBINATIONS = {
  'A*C*D*E*P*Uw*': AGOUTI,

}
