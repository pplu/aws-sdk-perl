
package Paws::AppConfig::ResourceTags;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::AppConfig::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ResourceTags

=head1 ATTRIBUTES


=head2 Tags => L<Paws::AppConfig::TagMap>

Metadata to assign to AppConfig resources. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define.


=head2 _request_id => Str


=cut

