# Generated from default/object.tt
package Paws::ECS::Attachment;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ECS::Types qw/ECS_KeyValuePair/;
  has Details => (is => 'ro', isa => ArrayRef[ECS_KeyValuePair]);
  has Id => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Details' => {
                              'class' => 'Paws::ECS::KeyValuePair',
                              'type' => 'ArrayRef[ECS_KeyValuePair]'
                            },
               'Id' => {
                         'type' => 'Str'
                       },
               'Type' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Id' => 'id',
                       'Details' => 'details',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Attachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Attachment object:

  $service_obj->Method(Att1 => { Details => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Attachment object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

An object representing a container instance or task attachment.

=head1 ATTRIBUTES


=head2 Details => ArrayRef[ECS_KeyValuePair]

  Details of the attachment. For elastic network interfaces, this
includes the network interface ID, the MAC address, the subnet ID, and
the private IPv4 address.


=head2 Id => Str

  The unique identifier for the attachment.


=head2 Status => Str

  The status of the attachment. Valid values are C<PRECREATED>,
C<CREATED>, C<ATTACHING>, C<ATTACHED>, C<DETACHING>, C<DETACHED>, and
C<DELETED>.


=head2 Type => Str

  The type of the attachment, such as C<ElasticNetworkInterface>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

