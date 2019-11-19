# Generated from default/object.tt
package Paws::AppStream::ImageBuilder;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::AppStream::Types qw/AppStream_AccessEndpoint AppStream_ImageBuilderStateChangeReason AppStream_NetworkAccessConfiguration AppStream_VpcConfig AppStream_ResourceError AppStream_DomainJoinInfo/;
  has AccessEndpoints => (is => 'ro', isa => ArrayRef[AppStream_AccessEndpoint]);
  has AppstreamAgentVersion => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has DomainJoinInfo => (is => 'ro', isa => AppStream_DomainJoinInfo);
  has EnableDefaultInternetAccess => (is => 'ro', isa => Bool);
  has IamRoleArn => (is => 'ro', isa => Str);
  has ImageArn => (is => 'ro', isa => Str);
  has ImageBuilderErrors => (is => 'ro', isa => ArrayRef[AppStream_ResourceError]);
  has InstanceType => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str, required => 1);
  has NetworkAccessConfiguration => (is => 'ro', isa => AppStream_NetworkAccessConfiguration);
  has Platform => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has StateChangeReason => (is => 'ro', isa => AppStream_ImageBuilderStateChangeReason);
  has VpcConfig => (is => 'ro', isa => AppStream_VpcConfig);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Platform' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'type' => 'Str'
                          },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'NetworkAccessConfiguration' => {
                                                 'class' => 'Paws::AppStream::NetworkAccessConfiguration',
                                                 'type' => 'AppStream_NetworkAccessConfiguration'
                                               },
               'ImageBuilderErrors' => {
                                         'type' => 'ArrayRef[AppStream_ResourceError]',
                                         'class' => 'Paws::AppStream::ResourceError'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'EnableDefaultInternetAccess' => {
                                                  'type' => 'Bool'
                                                },
               'ImageArn' => {
                               'type' => 'Str'
                             },
               'IamRoleArn' => {
                                 'type' => 'Str'
                               },
               'AccessEndpoints' => {
                                      'type' => 'ArrayRef[AppStream_AccessEndpoint]',
                                      'class' => 'Paws::AppStream::AccessEndpoint'
                                    },
               'Arn' => {
                          'type' => 'Str'
                        },
               'StateChangeReason' => {
                                        'type' => 'AppStream_ImageBuilderStateChangeReason',
                                        'class' => 'Paws::AppStream::ImageBuilderStateChangeReason'
                                      },
               'AppstreamAgentVersion' => {
                                            'type' => 'Str'
                                          },
               'DomainJoinInfo' => {
                                     'type' => 'AppStream_DomainJoinInfo',
                                     'class' => 'Paws::AppStream::DomainJoinInfo'
                                   },
               'VpcConfig' => {
                                'type' => 'AppStream_VpcConfig',
                                'class' => 'Paws::AppStream::VpcConfig'
                              },
               'Description' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ImageBuilder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ImageBuilder object:

  $service_obj->Method(Att1 => { AccessEndpoints => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ImageBuilder object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessEndpoints

=head1 DESCRIPTION

Describes a virtual machine that is used to create an image.

=head1 ATTRIBUTES


=head2 AccessEndpoints => ArrayRef[AppStream_AccessEndpoint]

  The list of virtual private cloud (VPC) interface endpoint objects.
Administrators can connect to the image builder only through the
specified endpoints.


=head2 AppstreamAgentVersion => Str

  The version of the AppStream 2.0 agent that is currently being used by
the image builder.


=head2 Arn => Str

  The ARN for the image builder.


=head2 CreatedTime => Str

  The time stamp when the image builder was created.


=head2 Description => Str

  The description to display.


=head2 DisplayName => Str

  The image builder name to display.


=head2 DomainJoinInfo => AppStream_DomainJoinInfo

  The name of the directory and organizational unit (OU) to use to join
the image builder to a Microsoft Active Directory domain.


=head2 EnableDefaultInternetAccess => Bool

  Enables or disables default internet access for the image builder.


=head2 IamRoleArn => Str

  The ARN of the IAM role that is applied to the image builder. To assume
a role, the image builder calls the AWS Security Token Service (STS)
C<AssumeRole> API operation and passes the ARN of the role to use. The
operation creates a new session with temporary credentials. AppStream
2.0 retrieves the temporary credentials and creates the
B<AppStream_Machine_Role> credential profile on the instance.

For more information, see Using an IAM Role to Grant Permissions to
Applications and Scripts Running on AppStream 2.0 Streaming Instances
(https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html)
in the I<Amazon AppStream 2.0 Administration Guide>.


=head2 ImageArn => Str

  The ARN of the image from which this builder was created.


=head2 ImageBuilderErrors => ArrayRef[AppStream_ResourceError]

  The image builder errors.


=head2 InstanceType => Str

  The instance type for the image builder. The following instance types
are available:

=over

=item *

stream.standard.medium

=item *

stream.standard.large

=item *

stream.compute.large

=item *

stream.compute.xlarge

=item *

stream.compute.2xlarge

=item *

stream.compute.4xlarge

=item *

stream.compute.8xlarge

=item *

stream.memory.large

=item *

stream.memory.xlarge

=item *

stream.memory.2xlarge

=item *

stream.memory.4xlarge

=item *

stream.memory.8xlarge

=item *

stream.graphics-design.large

=item *

stream.graphics-design.xlarge

=item *

stream.graphics-design.2xlarge

=item *

stream.graphics-design.4xlarge

=item *

stream.graphics-desktop.2xlarge

=item *

stream.graphics-pro.4xlarge

=item *

stream.graphics-pro.8xlarge

=item *

stream.graphics-pro.16xlarge

=back



=head2 B<REQUIRED> Name => Str

  The name of the image builder.


=head2 NetworkAccessConfiguration => AppStream_NetworkAccessConfiguration

  


=head2 Platform => Str

  The operating system platform of the image builder.


=head2 State => Str

  The state of the image builder.


=head2 StateChangeReason => AppStream_ImageBuilderStateChangeReason

  The reason why the last state change occurred.


=head2 VpcConfig => AppStream_VpcConfig

  The VPC configuration of the image builder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

