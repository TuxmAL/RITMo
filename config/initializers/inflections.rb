# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end


ActiveSupport::Inflector.inflections do |inflect|
   inflect.plural /^(.+)([cg])o$/i, '\1\2hi'
   inflect.plural /^(.+)([^cg])o$/i, '\1\2i'
   inflect.plural /^(.+)([cg])a$/i, '\1\2he'
   inflect.plural /^(.+)([^cg])a$/i, '\1\2e'
   inflect.plural /^(.+)e$/i, '\1i'
   inflect.singular /^(.+)hi$/i, '\1o'
   inflect.singular /^(.+)he$/i, '\1a'
   inflect.singular /^(.+)([^h])i$/i, '\1\2o'
   inflect.singular /^(.+)([^h])e$/i, '\1\2a'
   inflect.irregular 'utente', 'utenti'
   inflect.irregular 'stato_civile', 'stati_civili'
   inflect.irregular 'tipo_tessera', 'tipi_tessere'
   inflect.irregular 'comune', 'comuni'
   inflect.irregular 'parentela', 'parentele'
end
