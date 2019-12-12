package Paws::Quicksight::S3Source;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str', required => 1);
  has InputColumns => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::InputColumn]', required => 1);
  has UploadSettings => (is => 'ro', isa => 'Paws::Quicksight::UploadSettings');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::S3Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::S3Source object:

  $service_obj->Method(Att1 => { DataSourceArn => $value, ..., UploadSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::S3Source object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceArn

=head1 DESCRIPTION

A physical table type for as S3 data source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSourceArn => Str

  The amazon Resource Name (ARN) for the data source.


=head2 B<REQUIRED> InputColumns => ArrayRef[L<Paws::Quicksight::InputColumn>]

  A physical table type for as S3 data source.


=head2 UploadSettings => L<Paws::Quicksight::UploadSettings>

  Information about the format for the S3 source file or files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

