package Paws::SageMaker::ModelPackageSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelPackageSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelPackageSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., ModelPackageStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelPackageSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides summary information about a model package.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  A timestamp that shows when the model package was created.


=head2 B<REQUIRED> ModelPackageArn => Str

  The Amazon Resource Name (ARN) of the model package.


=head2 ModelPackageDescription => Str

  A brief description of the model package.


=head2 B<REQUIRED> ModelPackageName => Str

  The name of the model package.


=head2 B<REQUIRED> ModelPackageStatus => Str

  The overall status of the model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

