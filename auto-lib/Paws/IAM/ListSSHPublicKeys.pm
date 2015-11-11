
package Paws::IAM::ListSSHPublicKeys;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSSHPublicKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListSSHPublicKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSSHPublicKeysResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListSSHPublicKeys - Arguments for method ListSSHPublicKeys on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSSHPublicKeys on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method ListSSHPublicKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSSHPublicKeys.

As an example:

  $service_obj->ListSSHPublicKeys(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

  Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.


=head2 MaxItems => Int

  Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

This parameter is optional. If you do not include it, it defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true> and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.


=head2 UserName => Str

  The name of the IAM user to list SSH public keys for. If none is
specified, the UserName field is determined implicitly based on the AWS
access key used to sign the request.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSSHPublicKeys in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

