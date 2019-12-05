package Paws::CodeBuild::ReportGroup;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest']);
  has ExportConfig => (is => 'ro', isa => 'Paws::CodeBuild::ReportExportConfig', request_name => 'exportConfig', traits => ['NameInRequest']);
  has LastModified => (is => 'ro', isa => 'Str', request_name => 'lastModified', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ReportGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ReportGroup object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ReportGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A series of reports. Each report contains information about the results
from running a series of test cases. You specify the test cases for a
report group in the buildspec for a build project using one or more
paths to the test case files.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of a C<ReportGroup>.


=head2 Created => Str

  The date and time this C<ReportGroup> was created.


=head2 ExportConfig => L<Paws::CodeBuild::ReportExportConfig>

  Information about the destination where the raw data of this
C<ReportGroup> is exported.


=head2 LastModified => Str

  The date and time this C<ReportGroup> was last modified.


=head2 Name => Str

  The name of a C<ReportGroup>.


=head2 Type => Str

  The type of the C<ReportGroup>. The one valid value is C<TEST>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

