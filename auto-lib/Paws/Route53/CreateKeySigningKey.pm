
package Paws::Route53::CreateKeySigningKey;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has KeyManagementServiceArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeySigningKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/keysigningkey');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateKeySigningKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateKeySigningKeyRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'https://route53.amazonaws.com/doc/2013-04-01/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateKeySigningKey - Arguments for method CreateKeySigningKey on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeySigningKey on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateKeySigningKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeySigningKey.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateKeySigningKeyResponse = $route53->CreateKeySigningKey(
      CallerReference         => 'MyNonce',
      HostedZoneId            => 'MyResourceId',
      KeyManagementServiceArn => 'MySigningKeyString',
      Name                    => 'MySigningKeyName',
      Status                  => 'MySigningKeyStatus',

    );

    # Results:
    my $ChangeInfo    = $CreateKeySigningKeyResponse->ChangeInfo;
    my $KeySigningKey = $CreateKeySigningKeyResponse->KeySigningKey;
    my $Location      = $CreateKeySigningKeyResponse->Location;

    # Returns a L<Paws::Route53::CreateKeySigningKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateKeySigningKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request.



=head2 B<REQUIRED> HostedZoneId => Str

The unique string (ID) used to identify a hosted zone.



=head2 B<REQUIRED> KeyManagementServiceArn => Str

The Amazon resource name (ARN) for a customer managed customer master
key (CMK) in AWS Key Management Service (AWS KMS). The
C<KeyManagementServiceArn> must be unique for each key-signing key
(KSK) in a single hosted zone. To see an example of
C<KeyManagementServiceArn> that grants the correct permissions for
DNSSEC, scroll down to B<Example>.

You must configure the customer managed CMK as follows:

=over

=item Status

Enabled

=item Key spec

ECC_NIST_P256

=item Key usage

Sign and verify

=item Key policy

The key policy must give permission for the following actions:

=over

=item *

DescribeKey

=item *

GetPublicKey

=item *

Sign

=back

The key policy must also include the Amazon Route 53 service in the
principal for your account. Specify the following:

=over

=item *

C<"Service": "dnssec.route53.aws.amazonaws.com">

=back

=back

For more information about working with a customer managed CMK in AWS
KMS, see AWS Key Management Service concepts
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html).



=head2 B<REQUIRED> Name => Str

A string used to identify a key-signing key (KSK). C<Name> can include
numbers, letters, and underscores (_). C<Name> must be unique for each
key-signing key in the same hosted zone.



=head2 B<REQUIRED> Status => Str

A string specifying the initial status of the key-signing key (KSK).
You can set the value to C<ACTIVE> or C<INACTIVE>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeySigningKey in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

