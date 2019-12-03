package Paws::API::Builder::Paws {
  use Template;
  use Data::Printer;
  use Data::Dumper;
  use Paws::API::ServiceToClass;

  use autodie;

  use Moose;

  sub version {
    '0.42';
  }

  has boto_service_files => (is => 'ro', isa => 'ArrayRef[Str]', lazy => 1, default => sub {
    my $self = shift;
    my @dirs = glob('botocore/botocore/data/*') or
      die "Cannot find botocore data files in botocore/botocore/data/*\n";

    my @files;
    foreach my $class_dir (@dirs) {
      my @class_defs = grep { -f $_ } glob("$class_dir/*/service-2.json");
      next if (not @class_defs);
      @class_defs = sort @class_defs;
      my $class_version = pop @class_defs;
      push @files, $class_version;
    }

    return \@files;
  });

  has boto_file_information => (is => 'ro', isa => 'ArrayRef[HashRef]', lazy => 1, default => sub {
    my $self = shift;
    my @files = @{ $self->boto_service_files };
    my @info;
    foreach my $file (@files) {
      if (my ($service_dir, $version) = ($file =~ m/data\/(.*?)\/(.*?)\/service-2.json/)){
        # Discard directories that are not services (stuff in botocore dir structure
        next if ($service_dir eq '_retry' or $service_dir eq '_regions');
        push @info, {
          file => $file,
          service => $service_dir,
          version => $version
        };
      }
    }
    return \@info;
  });

  sub services {
    my $self = shift;

    return [ map { $_->{ service } } @{ $self->boto_file_information } ];
  }

  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      my $read_content = read_text($class_file_name);
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
  }

  sub escape_pod {
    my ($string) = @_;
    my %char2names = reverse %Pod::Escapes::Name2character;
    my $rekeys = list2re(keys %char2names);
    $string =~ s/($rekeys)/E<$char2names{$1}>/g;
    return $string;
  }

  has template_path => (is => 'ro', required => 1);

  has pawspm_template => (is => 'ro', isa => 'Str', default => 'paws.tt');

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(DEBUG => 1,INCLUDE_PATH => $self->template_path,
        FILTERS => { escape_pod => \&escape_pod });
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process {
    my ($self) = @_;
    my $class = $self->process_template(
      'default/paws_pm.tt',
      { c => $self }
    );
    $self->save_class('Paws', $class);
  }

  sub contributors {
    my $self = shift;
    my $contributions;
    {
      local $/ = undef;
      open my $file, '<', 'README.md';
      my $content = <$file>;
      close $file;
      ($contributions) = ($content =~ m/Thanks\n================\n(.*)$/ms);
    }
    return $contributions;
  }
}
1;
