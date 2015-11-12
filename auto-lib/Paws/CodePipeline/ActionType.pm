package Paws::CodePipeline::ActionType;
  use Moose;
  has ActionConfigurationProperties => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionConfigurationProperty]', xmlname => 'actionConfigurationProperties', request_name => 'actionConfigurationProperties', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest'], required => 1);
  has InputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', xmlname => 'inputArtifactDetails', request_name => 'inputArtifactDetails', traits => ['Unwrapped','NameInRequest'], required => 1);
  has OutputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', xmlname => 'outputArtifactDetails', request_name => 'outputArtifactDetails', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Settings => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeSettings', xmlname => 'settings', request_name => 'settings', traits => ['Unwrapped','NameInRequest']);
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


=head2 ActionConfigurationProperties => ArrayRef[L<Paws::CodePipeline::ActionConfigurationProperty>]

  The configuration properties for the action type.


=head2 B<REQUIRED> Id => L<Paws::CodePipeline::ActionTypeId>

  


=head2 B<REQUIRED> InputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

  The details of the input artifact for the action, such as its commit
ID.


=head2 B<REQUIRED> OutputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

  The details of the output artifact of the action, such as its commit
ID.


=head2 Settings => L<Paws::CodePipeline::ActionTypeSettings>

  The settings for the action type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

