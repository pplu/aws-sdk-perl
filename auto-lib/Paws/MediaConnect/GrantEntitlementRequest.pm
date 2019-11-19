# Generated from default/object.tt
package Paws::MediaConnect::GrantEntitlementRequest;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef Undef/;
  use Paws::MediaConnect::Types qw/MediaConnect_Encryption/;
  has DataTransferSubscriberFeePercent => (is => 'ro', isa => Int);
  has Description => (is => 'ro', isa => Str);
  has Encryption => (is => 'ro', isa => MediaConnect_Encryption);
  has Name => (is => 'ro', isa => Str);
  has Subscribers => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subscribers' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Encryption' => {
                                 'type' => 'MediaConnect_Encryption',
                                 'class' => 'Paws::MediaConnect::Encryption'
                               },
               'DataTransferSubscriberFeePercent' => {
                                                       'type' => 'Int'
                                                     }
             },
  'NameInRequest' => {
                       'DataTransferSubscriberFeePercent' => 'dataTransferSubscriberFeePercent',
                       'Encryption' => 'encryption',
                       'Name' => 'name',
                       'Description' => 'description',
                       'Subscribers' => 'subscribers'
                     },
  'IsRequired' => {
                    'Subscribers' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::GrantEntitlementRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::GrantEntitlementRequest object:

  $service_obj->Method(Att1 => { DataTransferSubscriberFeePercent => $value, ..., Subscribers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::GrantEntitlementRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DataTransferSubscriberFeePercent

=head1 DESCRIPTION

The entitlements that you want to grant on a flow.

=head1 ATTRIBUTES


=head2 DataTransferSubscriberFeePercent => Int

  Percentage from 0-100 of the data transfer cost to be billed to the
subscriber.


=head2 Description => Str

  A description of the entitlement. This description appears only on the
AWS Elemental MediaConnect console and will not be seen by the
subscriber or end user.


=head2 Encryption => MediaConnect_Encryption

  The type of encryption that will be used on the output that is
associated with this entitlement.


=head2 Name => Str

  The name of the entitlement. This value must be unique within the
current flow.


=head2 B<REQUIRED> Subscribers => ArrayRef[Str|Undef]

  The AWS account IDs that you want to share your content with. The
receiving accounts (subscribers) will be allowed to create their own
flows using your content as the source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

