package Paws::MediaConnect::Source;
  use Moose;
  has Decryption => (is => 'ro', isa => 'Paws::MediaConnect::Encryption', request_name => 'decryption', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EntitlementArn => (is => 'ro', isa => 'Str', request_name => 'entitlementArn', traits => ['NameInRequest']);
  has IngestIp => (is => 'ro', isa => 'Str', request_name => 'ingestIp', traits => ['NameInRequest']);
  has IngestPort => (is => 'ro', isa => 'Int', request_name => 'ingestPort', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has SourceArn => (is => 'ro', isa => 'Str', request_name => 'sourceArn', traits => ['NameInRequest'], required => 1);
  has Transport => (is => 'ro', isa => 'Paws::MediaConnect::Transport', request_name => 'transport', traits => ['NameInRequest']);
  has WhitelistCidr => (is => 'ro', isa => 'Str', request_name => 'whitelistCidr', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Source object:

  $service_obj->Method(Att1 => { Decryption => $value, ..., WhitelistCidr => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->Decryption

=head1 DESCRIPTION

The settings for the source of the flow.

=head1 ATTRIBUTES


=head2 Decryption => L<Paws::MediaConnect::Encryption>

  The type of encryption that is used on the content ingested from this
source.


=head2 Description => Str

  A description for the source. This value is not used or seen outside of
the current AWS Elemental MediaConnect account.


=head2 EntitlementArn => Str

  The ARN of the entitlement that allows you to subscribe to content that
comes from another AWS account. The entitlement is set by the content
originator and the ARN is generated as part of the originator's flow.


=head2 IngestIp => Str

  The IP address that the flow will be listening on for incoming content.


=head2 IngestPort => Int

  The port that the flow will be listening on for incoming content.


=head2 B<REQUIRED> Name => Str

  The name of the source.


=head2 B<REQUIRED> SourceArn => Str

  The ARN of the source.


=head2 Transport => L<Paws::MediaConnect::Transport>

  Attributes related to the transport stream that are used in the source.


=head2 WhitelistCidr => Str

  The range of IP addresses that should be allowed to contribute content
to your source. These IP addresses should in the form of a Classless
Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

