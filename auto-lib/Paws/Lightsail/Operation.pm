# Generated from default/object.tt
package Paws::Lightsail::Operation;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Lightsail::Types qw/Lightsail_ResourceLocation/;
  has CreatedAt => (is => 'ro', isa => Str);
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorDetails => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has IsTerminal => (is => 'ro', isa => Bool);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has OperationDetails => (is => 'ro', isa => Str);
  has OperationType => (is => 'ro', isa => Str);
  has ResourceName => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusChangedAt => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperationType' => {
                                    'type' => 'Str'
                                  },
               'OperationDetails' => {
                                       'type' => 'Str'
                                     },
               'Id' => {
                         'type' => 'Str'
                       },
               'Status' => {
                             'type' => 'Str'
                           },
               'IsTerminal' => {
                                 'type' => 'Bool'
                               },
               'StatusChangedAt' => {
                                      'type' => 'Str'
                                    },
               'ErrorDetails' => {
                                   'type' => 'Str'
                                 },
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             }
             },
  'NameInRequest' => {
                       'OperationType' => 'operationType',
                       'OperationDetails' => 'operationDetails',
                       'Id' => 'id',
                       'Status' => 'status',
                       'IsTerminal' => 'isTerminal',
                       'StatusChangedAt' => 'statusChangedAt',
                       'ErrorDetails' => 'errorDetails',
                       'ResourceName' => 'resourceName',
                       'ResourceType' => 'resourceType',
                       'CreatedAt' => 'createdAt',
                       'ErrorCode' => 'errorCode',
                       'Location' => 'location'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Operation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Operation object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., StatusChangedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Operation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes the API operation.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The timestamp when the operation was initialized (e.g.,
C<1479816991.349>).


=head2 ErrorCode => Str

  The error code.


=head2 ErrorDetails => Str

  The error details.


=head2 Id => Str

  The ID of the operation.


=head2 IsTerminal => Bool

  A Boolean value indicating whether the operation is terminal.


=head2 Location => Lightsail_ResourceLocation

  The region and Availability Zone.


=head2 OperationDetails => Str

  Details about the operation (e.g., C<Debian-1GB-Ohio-1>).


=head2 OperationType => Str

  The type of operation.


=head2 ResourceName => Str

  The resource name.


=head2 ResourceType => Str

  The resource type.


=head2 Status => Str

  The status of the operation.


=head2 StatusChangedAt => Str

  The timestamp when the status was changed (e.g., C<1479816991.349>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

