
package Paws::Pinpoint::AttributesResource;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AttributeType => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AttributesResource

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application.


=head2 Attributes => ArrayRef[Str|Undef]

An array that specifies the names of the attributes that were removed
from the endpoints.


=head2 B<REQUIRED> AttributeType => Str

The type of attribute or attributes that were removed from the
endpoints. Valid values are:

=over

=item *

endpoint-custom-attributes - Custom attributes that describe endpoints

=item *

endpoint-custom-metrics - Custom metrics that your app reports to
Amazon Pinpoint for endpoints

=item *

endpoint-user-attributes - Custom attributes that describe users

=back



=head2 _request_id => Str


=cut

