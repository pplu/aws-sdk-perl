
package Paws::Signer::RevokeSignature;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'jobId', required => 1);
  has JobOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobOwner');
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSignature');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/signing-jobs/{jobId}/revoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::RevokeSignature - Arguments for method RevokeSignature on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSignature on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method RevokeSignature.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSignature.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    $signer->RevokeSignature(
      JobId    => 'MyJobId',
      Reason   => 'MyRevocationReasonString',
      JobOwner => 'MyAccountId',                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/RevokeSignature>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

ID of the signing job to be revoked.



=head2 JobOwner => Str

AWS account ID of the job owner.



=head2 B<REQUIRED> Reason => Str

The reason for revoking the signing job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSignature in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

