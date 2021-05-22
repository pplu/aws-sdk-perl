package Paws::EC2::AthenaIntegration;
  use Moose;
  has IntegrationResultS3DestinationArn => (is => 'ro', isa => 'Str', required => 1);
  has PartitionEndDate => (is => 'ro', isa => 'Str');
  has PartitionLoadFrequency => (is => 'ro', isa => 'Str', required => 1);
  has PartitionStartDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AthenaIntegration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AthenaIntegration object:

  $service_obj->Method(Att1 => { IntegrationResultS3DestinationArn => $value, ..., PartitionStartDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AthenaIntegration object:

  $result = $service_obj->Method(...);
  $result->Att1->IntegrationResultS3DestinationArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntegrationResultS3DestinationArn => Str

The location in Amazon S3 to store the generated CloudFormation
template.


=head2 PartitionEndDate => Str

The end date for the partition.


=head2 B<REQUIRED> PartitionLoadFrequency => Str

The schedule for adding new partitions to the table.


=head2 PartitionStartDate => Str

The start date for the partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
