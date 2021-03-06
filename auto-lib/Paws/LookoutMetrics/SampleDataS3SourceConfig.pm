# Generated by default/object.tt
package Paws::LookoutMetrics::SampleDataS3SourceConfig;
  use Moose;
  has FileFormatDescriptor => (is => 'ro', isa => 'Paws::LookoutMetrics::FileFormatDescriptor', required => 1);
  has HistoricalDataPathList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has TemplatedPathList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::SampleDataS3SourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutMetrics::SampleDataS3SourceConfig object:

  $service_obj->Method(Att1 => { FileFormatDescriptor => $value, ..., TemplatedPathList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutMetrics::SampleDataS3SourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FileFormatDescriptor

=head1 DESCRIPTION

Contains information about the source configuration in Amazon S3.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileFormatDescriptor => L<Paws::LookoutMetrics::FileFormatDescriptor>




=head2 HistoricalDataPathList => ArrayRef[Str|Undef]

An array of strings containing the historical set of data paths.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the role.


=head2 TemplatedPathList => ArrayRef[Str|Undef]

An array of strings containing the list of templated paths.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

