package Paws::SageMaker::DebugHookConfig;
  use Moose;
  has CollectionConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::CollectionConfiguration]');
  has HookParameters => (is => 'ro', isa => 'Paws::SageMaker::HookParameters');
  has LocalPath => (is => 'ro', isa => 'Str');
  has S3OutputPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DebugHookConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DebugHookConfig object:

  $service_obj->Method(Att1 => { CollectionConfigurations => $value, ..., S3OutputPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DebugHookConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CollectionConfigurations

=head1 DESCRIPTION

Configuration information for the debug hook parameters, collection
configuration, and storage paths.

=head1 ATTRIBUTES


=head2 CollectionConfigurations => ArrayRef[L<Paws::SageMaker::CollectionConfiguration>]

  Configuration information for tensor collections.


=head2 HookParameters => L<Paws::SageMaker::HookParameters>

  Configuration information for the debug hook parameters.


=head2 LocalPath => Str

  Path to local storage location for tensors. Defaults to
C</opt/ml/output/tensors/>.


=head2 B<REQUIRED> S3OutputPath => Str

  Path to Amazon S3 storage location for tensors.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

