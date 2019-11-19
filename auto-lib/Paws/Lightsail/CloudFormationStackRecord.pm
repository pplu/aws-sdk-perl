# Generated from default/object.tt
package Paws::Lightsail::CloudFormationStackRecord;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_ResourceLocation Lightsail_CloudFormationStackRecordSourceInfo Lightsail_DestinationInfo/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DestinationInfo => (is => 'ro', isa => Lightsail_DestinationInfo);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SourceInfo => (is => 'ro', isa => ArrayRef[Lightsail_CloudFormationStackRecordSourceInfo]);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'DestinationInfo' => {
                                      'type' => 'Lightsail_DestinationInfo',
                                      'class' => 'Paws::Lightsail::DestinationInfo'
                                    },
               'State' => {
                            'type' => 'Str'
                          },
               'Arn' => {
                          'type' => 'Str'
                        },
               'SourceInfo' => {
                                 'type' => 'ArrayRef[Lightsail_CloudFormationStackRecordSourceInfo]',
                                 'class' => 'Paws::Lightsail::CloudFormationStackRecordSourceInfo'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'Location' => {
                               'class' => 'Paws::Lightsail::ResourceLocation',
                               'type' => 'Lightsail_ResourceLocation'
                             },
               'CreatedAt' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'CreatedAt' => 'createdAt',
                       'SourceInfo' => 'sourceInfo',
                       'ResourceType' => 'resourceType',
                       'Location' => 'location',
                       'Name' => 'name',
                       'DestinationInfo' => 'destinationInfo',
                       'Arn' => 'arn',
                       'State' => 'state'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CloudFormationStackRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::CloudFormationStackRecord object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::CloudFormationStackRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a CloudFormation stack record created as a result of the
C<create cloud formation stack> operation.

A CloudFormation stack record provides information about the AWS
CloudFormation stack used to create a new Amazon Elastic Compute Cloud
instance from an exported Lightsail instance snapshot.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the CloudFormation stack record.


=head2 CreatedAt => Str

  The date when the CloudFormation stack record was created.


=head2 DestinationInfo => Lightsail_DestinationInfo

  A list of objects describing the destination service, which is AWS
CloudFormation, and the Amazon Resource Name (ARN) of the AWS
CloudFormation stack.


=head2 Location => Lightsail_ResourceLocation

  A list of objects describing the Availability Zone and AWS Region of
the CloudFormation stack record.


=head2 Name => Str

  The name of the CloudFormation stack record. It starts with
C<CloudFormationStackRecord> followed by a GUID.


=head2 ResourceType => Str

  The Lightsail resource type (e.g., C<CloudFormationStackRecord>).


=head2 SourceInfo => ArrayRef[Lightsail_CloudFormationStackRecordSourceInfo]

  A list of objects describing the source of the CloudFormation stack
record.


=head2 State => Str

  The current state of the CloudFormation stack record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

