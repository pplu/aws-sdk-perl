# Generated from default/object.tt
package Paws::MediaConnect::Entitlement;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaConnect::Types qw/MediaConnect_Encryption/;
  has Description => (is => 'ro', isa => Str);
  has Encryption => (is => 'ro', isa => MediaConnect_Encryption);
  has EntitlementArn => (is => 'ro', isa => Str, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has Subscribers => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subscribers' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'Encryption' => {
                                 'class' => 'Paws::MediaConnect::Encryption',
                                 'type' => 'MediaConnect_Encryption'
                               },
               'Name' => {
                           'type' => 'Str'
                         },
               'EntitlementArn' => {
                                     'type' => 'Str'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Subscribers' => 'subscribers',
                       'Encryption' => 'encryption',
                       'Name' => 'name',
                       'EntitlementArn' => 'entitlementArn',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Subscribers' => 1,
                    'Name' => 1,
                    'EntitlementArn' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 Encryption => MediaConnect_Encryption

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

