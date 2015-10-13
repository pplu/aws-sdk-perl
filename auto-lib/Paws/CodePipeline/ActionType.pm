package Paws::CodePipeline::ActionType;
  use Moose;
  has actionConfigurationProperties => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionConfigurationProperty]');
  has id => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeId', required => 1);
  has inputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', required => 1);
  has outputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', required => 1);
  has settings => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeSettings');
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

  $service_obj->Method(Att1 => { actionConfigurationProperties => $value, ..., settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionType object:

  $result = $service_obj->Method(...);
  $result->Att1->actionConfigurationProperties

=head1 DESCRIPTION

Returns information about the details of an action type.

=head1 ATTRIBUTES

=head2 actionConfigurationProperties => ArrayRef[L<Paws::CodePipeline::ActionConfigurationProperty>]

  The configuration properties for the action type.

=head2 B<REQUIRED> id => L<Paws::CodePipeline::ActionTypeId>

  

=head2 B<REQUIRED> inputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

  The details of the input artifact for the action, such as its commit
ID.

=head2 B<REQUIRED> outputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

  The details of the output artifact of the action, such as its commit
ID.

=head2 settings => L<Paws::CodePipeline::ActionTypeSettings>

  The settings for the action type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

