
package Paws::CloudTrail::ListPublicKeys;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPublicKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListPublicKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListPublicKeys - Arguments for method ListPublicKeys on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPublicKeys on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListPublicKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPublicKeys.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListPublicKeysResponse = $cloudtrail->ListPublicKeys(
      EndTime   => '1970-01-01T01:00:00',    # OPTIONAL
      NextToken => 'MyString',               # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListPublicKeysResponse->NextToken;
    my $PublicKeyList = $ListPublicKeysResponse->PublicKeyList;

    # Returns a L<Paws::CloudTrail::ListPublicKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListPublicKeys>

=head1 ATTRIBUTES


=head2 EndTime => Str

Optionally specifies, in UTC, the end of the time range to look up
public keys for CloudTrail digest files. If not specified, the current
time is used.



=head2 NextToken => Str

Reserved for future use.



=head2 StartTime => Str

Optionally specifies, in UTC, the start of the time range to look up
public keys for CloudTrail digest files. If not specified, the current
time is used, and the current public key is returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPublicKeys in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

