package Paws::API::Builder::Paws {
  use Template;
  use Data::Printer;
  use Data::Dumper;
  use Paws::API::ServiceToClass;

  use autodie;

  use Moose;

  sub version {
    '0.39';
  }

  sub services {
    my $self = shift;
    [ Paws::API::ServiceToClass::classes ];
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

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new(
      INCLUDE_PATH => './templates/default',
    );
    my $output = '';
    $tt->process($template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process {
    my ($self) = @_;
    my $class = $self->process_template(
      'paws_pm.tt',
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
