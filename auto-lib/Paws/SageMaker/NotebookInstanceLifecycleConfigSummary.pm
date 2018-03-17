package Paws::SageMaker::NotebookInstanceLifecycleConfigSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NotebookInstanceLifecycleConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::NotebookInstanceLifecycleConfigSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NotebookInstanceLifecycleConfigSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., NotebookInstanceLifecycleConfigName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NotebookInstanceLifecycleConfigSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides a summary of a notebook instance lifecycle configuration.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  A timestamp that tells when the lifecycle configuration was created.


=head2 LastModifiedTime => Str

  A timestamp that tells when the lifecycle configuration was last
modified.


=head2 B<REQUIRED> NotebookInstanceLifecycleConfigArn => Str

  The Amazon Resource Name (ARN) of the lifecycle configuration.


=head2 B<REQUIRED> NotebookInstanceLifecycleConfigName => Str

  The name of the lifecycle configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

