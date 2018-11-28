package Paws::MediaConnect::Output;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::Encryption', request_name => 'encryption', traits => ['NameInRequest']);
  has EntitlementArn => (is => 'ro', isa => 'Str', request_name => 'entitlementArn', traits => ['NameInRequest']);
  has MediaLiveInputArn => (is => 'ro', isa => 'Str', request_name => 'mediaLiveInputArn', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OutputArn => (is => 'ro', isa => 'Str', request_name => 'outputArn', traits => ['NameInRequest'], required => 1);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has Transport => (is => 'ro', isa => 'Paws::MediaConnect::Transport', request_name => 'transport', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Output object:

  $service_obj->Method(Att1 => { Description => $value, ..., Transport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The settings for an output.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the output.


=head2 Destination => Str

  The address where you want to send the output.


=head2 Encryption => L<Paws::MediaConnect::Encryption>

  The type of key used for the encryption. If no keyType is provided, the
service will use the default setting (static-key).


=head2 EntitlementArn => Str

  The ARN of the entitlement on the originator''s flow. This value is
relevant only on entitled flows.


=head2 MediaLiveInputArn => Str

  The input ARN of the AWS Elemental MediaLive channel. This parameter is
relevant only for outputs that were added by creating a MediaLive
input.


=head2 B<REQUIRED> Name => Str

  The name of the output. This value must be unique within the current
flow.


=head2 B<REQUIRED> OutputArn => Str

  The ARN of the output.


=head2 Port => Int

  The port to use when content is distributed to this output.


=head2 Transport => L<Paws::MediaConnect::Transport>

  Attributes related to the transport stream that are used in the output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

