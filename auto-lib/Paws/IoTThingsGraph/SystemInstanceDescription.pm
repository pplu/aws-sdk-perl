# Generated from default/object.tt
package Paws::IoTThingsGraph::SystemInstanceDescription;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_DependencyRevision IoTThingsGraph_DefinitionDocument IoTThingsGraph_SystemInstanceSummary IoTThingsGraph_MetricsConfiguration/;
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument);
  has FlowActionsRoleArn => (is => 'ro', isa => Str);
  has MetricsConfiguration => (is => 'ro', isa => IoTThingsGraph_MetricsConfiguration);
  has S3BucketName => (is => 'ro', isa => Str);
  has Summary => (is => 'ro', isa => IoTThingsGraph_SystemInstanceSummary);
  has ValidatedDependencyRevisions => (is => 'ro', isa => ArrayRef[IoTThingsGraph_DependencyRevision]);
  has ValidatedNamespaceVersion => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ValidatedNamespaceVersion' => 'validatedNamespaceVersion',
                       'S3BucketName' => 's3BucketName',
                       'ValidatedDependencyRevisions' => 'validatedDependencyRevisions',
                       'MetricsConfiguration' => 'metricsConfiguration',
                       'Summary' => 'summary',
                       'Definition' => 'definition',
                       'FlowActionsRoleArn' => 'flowActionsRoleArn'
                     },
  'types' => {
               'ValidatedNamespaceVersion' => {
                                                'type' => 'Int'
                                              },
               'ValidatedDependencyRevisions' => {
                                                   'type' => 'ArrayRef[IoTThingsGraph_DependencyRevision]',
                                                   'class' => 'Paws::IoTThingsGraph::DependencyRevision'
                                                 },
               'S3BucketName' => {
                                   'type' => 'Str'
                                 },
               'Definition' => {
                                 'type' => 'IoTThingsGraph_DefinitionDocument',
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument'
                               },
               'FlowActionsRoleArn' => {
                                         'type' => 'Str'
                                       },
               'Summary' => {
                              'type' => 'IoTThingsGraph_SystemInstanceSummary',
                              'class' => 'Paws::IoTThingsGraph::SystemInstanceSummary'
                            },
               'MetricsConfiguration' => {
                                           'class' => 'Paws::IoTThingsGraph::MetricsConfiguration',
                                           'type' => 'IoTThingsGraph_MetricsConfiguration'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SystemInstanceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::SystemInstanceDescription object:

  $service_obj->Method(Att1 => { Definition => $value, ..., ValidatedNamespaceVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::SystemInstanceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

An object that contains a system instance definition and summary
information.

=head1 ATTRIBUTES


=head2 Definition => IoTThingsGraph_DefinitionDocument

  


=head2 FlowActionsRoleArn => Str

  The AWS Identity and Access Management (IAM) role that AWS IoT Things
Graph assumes during flow execution in a cloud deployment. This role
must have read and write permissionss to AWS Lambda and AWS IoT and to
any other AWS services that the flow uses.


=head2 MetricsConfiguration => IoTThingsGraph_MetricsConfiguration

  


=head2 S3BucketName => Str

  The Amazon Simple Storage Service bucket where information about a
system instance is stored.


=head2 Summary => IoTThingsGraph_SystemInstanceSummary

  An object that contains summary information about a system instance.


=head2 ValidatedDependencyRevisions => ArrayRef[IoTThingsGraph_DependencyRevision]

  A list of objects that contain all of the IDs and revision numbers of
workflows and systems that are used in a system instance.


=head2 ValidatedNamespaceVersion => Int

  The version of the user's namespace against which the system instance
was validated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

