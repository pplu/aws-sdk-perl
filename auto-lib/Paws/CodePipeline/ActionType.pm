# Generated from default/object.tt
package Paws::CodePipeline::ActionType;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionTypeSettings CodePipeline_ArtifactDetails CodePipeline_ActionTypeId CodePipeline_ActionConfigurationProperty/;
  has ActionConfigurationProperties => (is => 'ro', isa => ArrayRef[CodePipeline_ActionConfigurationProperty]);
  has Id => (is => 'ro', isa => CodePipeline_ActionTypeId, required => 1);
  has InputArtifactDetails => (is => 'ro', isa => CodePipeline_ArtifactDetails, required => 1);
  has OutputArtifactDetails => (is => 'ro', isa => CodePipeline_ArtifactDetails, required => 1);
  has Settings => (is => 'ro', isa => CodePipeline_ActionTypeSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputArtifactDetails' => {
                                           'class' => 'Paws::CodePipeline::ArtifactDetails',
                                           'type' => 'CodePipeline_ArtifactDetails'
                                         },
               'Id' => {
                         'class' => 'Paws::CodePipeline::ActionTypeId',
                         'type' => 'CodePipeline_ActionTypeId'
                       },
               'Settings' => {
                               'class' => 'Paws::CodePipeline::ActionTypeSettings',
                               'type' => 'CodePipeline_ActionTypeSettings'
                             },
               'OutputArtifactDetails' => {
                                            'class' => 'Paws::CodePipeline::ArtifactDetails',
                                            'type' => 'CodePipeline_ArtifactDetails'
                                          },
               'ActionConfigurationProperties' => {
                                                    'class' => 'Paws::CodePipeline::ActionConfigurationProperty',
                                                    'type' => 'ArrayRef[CodePipeline_ActionConfigurationProperty]'
                                                  }
             },
  'NameInRequest' => {
                       'ActionConfigurationProperties' => 'actionConfigurationProperties',
                       'Settings' => 'settings',
                       'OutputArtifactDetails' => 'outputArtifactDetails',
                       'Id' => 'id',
                       'InputArtifactDetails' => 'inputArtifactDetails'
                     },
  'IsRequired' => {
                    'OutputArtifactDetails' => 1,
                    'Id' => 1,
                    'InputArtifactDetails' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionType object:

  $service_obj->Method(Att1 => { ActionConfigurationProperties => $value, ..., Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionType object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionConfigurationProperties

=head1 DESCRIPTION

Returns information about the details of an action type.

=head1 ATTRIBUTES


=head2 ActionConfigurationProperties => ArrayRef[CodePipeline_ActionConfigurationProperty]

  The configuration properties for the action type.


=head2 B<REQUIRED> Id => CodePipeline_ActionTypeId

  Represents information about an action type.


=head2 B<REQUIRED> InputArtifactDetails => CodePipeline_ArtifactDetails

  The details of the input artifact for the action, such as its commit
ID.


=head2 B<REQUIRED> OutputArtifactDetails => CodePipeline_ArtifactDetails

  The details of the output artifact of the action, such as its commit
ID.


=head2 Settings => CodePipeline_ActionTypeSettings

  The settings for the action type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

