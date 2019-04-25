package Paws::MediaConnect::Entitlement;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Encryption => (is => 'ro', isa => 'Paws::MediaConnect::Encryption', request_name => 'encryption', traits => ['NameInRequest']);
  has EntitlementArn => (is => 'ro', isa => 'Str', request_name => 'entitlementArn', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subscribers', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Entitlement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Entitlement object:

  $service_obj->Method(Att1 => { Description => $value, ..., Subscribers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Entitlement object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The settings for a flow entitlement.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the entitlement.


=head2 Encryption => L<Paws::MediaConnect::Encryption>

  The type of encryption that will be used on the output that is
associated with this entitlement.


=head2 B<REQUIRED> EntitlementArn => Str

  The ARN of the entitlement.


=head2 B<REQUIRED> Name => Str

  The name of the entitlement.


=head2 B<REQUIRED> Subscribers => ArrayRef[Str|Undef]

  The AWS account IDs that you want to share your content with. The
receiving accounts (subscribers) will be allowed to create their own
flow using your content as the source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

