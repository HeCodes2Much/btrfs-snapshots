schemas = [
  'org.therepoclub.btrfs-snapshots.preferences.gschema.xml',
]

conf = configuration_data()
conf.set('prefix', prefix)
conf.set('exec_prefix', prefix)
conf.set('libdir', libdir)
conf.set('bindir', bindir)
conf.set('libexecdir', libexecdir)
conf.set('datarootdir', datadir)
conf.set('datadir', datadir)
conf.set('includedir', includedir)

generated_schemas = []
foreach schema: schemas
  generated_schemas += configure_file(
    output: schema,
    input: schema + '.in',
    configuration: conf,
  )
endforeach

install_data(generated_schemas, install_dir: schemasdir)

install_data(
  'btrfs-snapshots-schemas.convert',
  install_dir: join_paths(datadir, 'GConf', 'gsettings'),
)
