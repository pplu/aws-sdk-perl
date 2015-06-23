package Paws::API::RegionBuilder {
  use Moose;
  use autodie;
  use JSON;
  use Data::Dumper;
  use Template;

  has rules => ( is => 'rw', isa => 'Str', required => 1 );
  has file  => ( is => 'rw', isa => 'Str', required => 1 );

  has json => ( 
    is => 'ro', 
    lazy => 1,
    traits => [ 'Hash' ],
    handles => {
      get_rules_for_service => 'get',
    }, 
    default => sub {
      my $self = shift;
      my $json = JSON->new->pretty;
      $json = $json->relaxed([1]); # At some point input did fail without this
      local $/ = undef;
      open my $fh, '<', $self->rules;
      $json = <$fh>;
      close $fh;
      return decode_json($json);
    }
  );

  has perl_ds => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $d = Data::Dumper->new([ $self->json ], [ 'data' ]);
      $d->Indent(1);
      $d->Pad('  ');
      $d->Quotekeys(0);
      $d->Sortkeys(1);
      return $d->Dump;
    }
  );

   has template => (is => 'ro', isa => 'Str', default => q#
package Paws::RegionInfo {

  sub get {
    my $data;
  [% c.perl_ds %]
    return $data;
  }

}
1;
#);

  sub process_template {
    my ($self) = @_;
    my $tt = Template->new;
    my $template = $self->template;
    my $output = '';
    $tt->process(\$template, { c => $self }, \$output) || die $tt->error();
    return $output;
  }

  sub write_file {
    my ($self) = @_;
    my $content = $self->process_template;
    open my $fh, '>', $self->file;
    print $fh $content;
    close $fh;
  }
}
1;

