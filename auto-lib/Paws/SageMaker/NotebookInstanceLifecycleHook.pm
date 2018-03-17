package Paws::SageMaker::NotebookInstanceLifecycleHook;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::NotebookInstanceLifecycleHook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NotebookInstanceLifecycleHook object:

  $service_obj->Method(Att1 => { Content => $value, ..., Content => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NotebookInstanceLifecycleHook object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

Contains the notebook instance lifecycle configuration script.

This script runs in the path C</sbin:bin:/usr/sbin:/usr/bin>.

For information about notebook instance lifestyle configurations, see
notebook-lifecycle-config.

=head1 ATTRIBUTES


=head2 Content => Str

  A base64-encoded string that contains a shell script for a notebook
instance lifecycle configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

