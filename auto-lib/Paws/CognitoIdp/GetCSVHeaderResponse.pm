
package Paws::CognitoIdp::GetCSVHeaderResponse;
  use Moose;
  has CSVHeader => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserPoolId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetCSVHeaderResponse

=head1 ATTRIBUTES


=head2 CSVHeader => ArrayRef[Str|Undef]

The header information for the .csv file for the user import job.


=head2 UserPoolId => Str

The user pool ID for the user pool that the users are to be imported
into.


=head2 _request_id => Str


=cut

1;