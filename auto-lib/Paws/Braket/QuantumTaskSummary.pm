# Generated by default/object.tt
package Paws::Braket::QuantumTaskSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has DeviceArn => (is => 'ro', isa => 'Str', request_name => 'deviceArn', traits => ['NameInRequest'], required => 1);
  has EndedAt => (is => 'ro', isa => 'Str', request_name => 'endedAt', traits => ['NameInRequest']);
  has OutputS3Bucket => (is => 'ro', isa => 'Str', request_name => 'outputS3Bucket', traits => ['NameInRequest'], required => 1);
  has OutputS3Directory => (is => 'ro', isa => 'Str', request_name => 'outputS3Directory', traits => ['NameInRequest'], required => 1);
  has QuantumTaskArn => (is => 'ro', isa => 'Str', request_name => 'quantumTaskArn', traits => ['NameInRequest'], required => 1);
  has Shots => (is => 'ro', isa => 'Int', request_name => 'shots', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Braket::TagsMap', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::QuantumTaskSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Braket::QuantumTaskSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Braket::QuantumTaskSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Includes information about a quantum task.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The time at which the task was created.


=head2 B<REQUIRED> DeviceArn => Str

The ARN of the device the task ran on.


=head2 EndedAt => Str

The time at which the task finished.


=head2 B<REQUIRED> OutputS3Bucket => Str

The S3 bucket where the task result file is stored..


=head2 B<REQUIRED> OutputS3Directory => Str

The folder in the S3 bucket where the task result file is stored.


=head2 B<REQUIRED> QuantumTaskArn => Str

The ARN of the task.


=head2 B<REQUIRED> Shots => Int

The shots used for the task.


=head2 B<REQUIRED> Status => Str

The status of the task.


=head2 Tags => L<Paws::Braket::TagsMap>

Displays the key, value pairs of tags associated with this quantum
task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Braket>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

