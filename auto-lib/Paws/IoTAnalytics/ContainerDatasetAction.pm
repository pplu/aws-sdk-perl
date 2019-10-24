# Generated from default/object.tt
package Paws::IoTAnalytics::ContainerDatasetAction;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Variable IoTAnalytics_ResourceConfiguration/;
  has ExecutionRoleArn => (is => 'ro', isa => Str, required => 1);
  has Image => (is => 'ro', isa => Str, required => 1);
  has ResourceConfiguration => (is => 'ro', isa => IoTAnalytics_ResourceConfiguration, required => 1);
  has Variables => (is => 'ro', isa => ArrayRef[IoTAnalytics_Variable]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Variables' => {
                                'class' => 'Paws::IoTAnalytics::Variable',
                                'type' => 'ArrayRef[IoTAnalytics_Variable]'
                              },
               'ExecutionRoleArn' => {
                                       'type' => 'Str'
                                     },
               'Image' => {
                            'type' => 'Str'
                          },
               'ResourceConfiguration' => {
                                            'class' => 'Paws::IoTAnalytics::ResourceConfiguration',
                                            'type' => 'IoTAnalytics_ResourceConfiguration'
                                          }
             },
  'NameInRequest' => {
                       'Variables' => 'variables',
                       'ExecutionRoleArn' => 'executionRoleArn',
                       'Image' => 'image',
                       'ResourceConfiguration' => 'resourceConfiguration'
                     },
  'IsRequired' => {
                    'ExecutionRoleArn' => 1,
                    'Image' => 1,
                    'ResourceConfiguration' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ContainerDatasetAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::ContainerDatasetAction object:

  $service_obj->Method(Att1 => { ExecutionRoleArn => $value, ..., Variables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::ContainerDatasetAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionRoleArn

=head1 DESCRIPTION

Information needed to run the "containerAction" to produce data set
contents.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionRoleArn => Str

  The ARN of the role which gives permission to the system to access
needed resources in order to run the "containerAction". This includes,
at minimum, permission to retrieve the data set contents which are the
input to the containerized application.


=head2 B<REQUIRED> Image => Str

  The ARN of the Docker container stored in your account. The Docker
container contains an application and needed support libraries and is
used to generate data set contents.


=head2 B<REQUIRED> ResourceConfiguration => IoTAnalytics_ResourceConfiguration

  Configuration of the resource which executes the "containerAction".


=head2 Variables => ArrayRef[IoTAnalytics_Variable]

  The values of variables used within the context of the execution of the
containerized application (basically, parameters passed to the
application). Each variable must have a name and a value given by one
of "stringValue", "datasetContentVersionValue", or
"outputFileUriValue".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

