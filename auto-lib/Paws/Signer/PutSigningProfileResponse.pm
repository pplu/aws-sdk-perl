
package Paws::Signer::PutSigningProfileResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ProfileVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersion');
  has ProfileVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profileVersionArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::PutSigningProfileResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the signing profile created.


=head2 ProfileVersion => Str

The version of the signing profile being created.


=head2 ProfileVersionArn => Str

The signing profile ARN, including the profile version.


=head2 _request_id => Str


=cut

