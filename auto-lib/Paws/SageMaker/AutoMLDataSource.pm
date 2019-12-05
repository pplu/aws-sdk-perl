package Paws::SageMaker::AutoMLDataSource;
  use Moose;
  has S3DataSource => (is => 'ro', isa => 'Paws::SageMaker::AutoMLS3DataSource', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLDataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLDataSource object:

  $service_obj->Method(Att1 => { S3DataSource => $value, ..., S3DataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLDataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3DataSource

=head1 DESCRIPTION

The data source for the AutoPilot job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3DataSource => L<Paws::SageMaker::AutoMLS3DataSource>

  The Amazon S3 location of the data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

