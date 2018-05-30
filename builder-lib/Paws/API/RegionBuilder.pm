package Paws::API::RegionBuilder {
  use Moose;
  use autodie;
  use JSON::MaybeXS;
  use Data::Dumper;
  use Template;
  use Path::Class;

  has rules =>   (is => 'rw', isa => 'Str', required => 1);
  has service => (is => 'ro', isa => 'Str', required => 1);

  has json => ( 
    is => 'ro', 
    lazy => 1,
    default => sub {
      my $self = shift;
      my $f = Path::Class::File->new($self->rules);
      return decode_json($f->slurp)->{ $self->service };
    }
  );

  has perl_ds => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $d = Data::Dumper->new([ $self->json ], [ 'regioninfo' ]);
      $d->Indent(1);
      $d->Pad('  ');
      $d->Quotekeys(0);
      $d->Sortkeys(1);
      return $d->Dump;
    }
  );

   has region_accessor_template => (is => 'ro', isa => 'Str', default => q#
  has '+region_rules' => (default => sub {
    my $regioninfo;
    [% c.perl_ds %]
    return $regioninfo;
  });
#);

  sub region_accessor {
    my ($self) = @_;
    if (defined $self->json) {
      my $tt = Template->new;
      my $template = $self->region_accessor_template;
      my $output = '';
      $tt->process(\$template, { c => $self }, \$output) || die $tt->error();
      return $output;
    } else {
      return '';
    }
  }
}
1;

