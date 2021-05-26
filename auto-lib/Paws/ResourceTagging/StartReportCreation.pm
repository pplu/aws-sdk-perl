
package Paws::ResourceTagging::StartReportCreation;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReportCreation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::StartReportCreationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::StartReportCreation - Arguments for method StartReportCreation on L<Paws::ResourceTagging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReportCreation on the
L<AWS Resource Groups Tagging API|Paws::ResourceTagging> service. Use the attributes of this class
as arguments to method StartReportCreation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReportCreation.

=head1 SYNOPSIS

    my $tagging = Paws->service('ResourceTagging');
    my $StartReportCreationOutput = $tagging->StartReportCreation(
      S3Bucket => 'MyS3Bucket',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tagging/StartReportCreation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

The name of the Amazon S3 bucket where the report will be stored; for
example:

C<awsexamplebucket>

For more information on S3 bucket requirements, including an example
bucket policy, see the example S3 bucket policy on this page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReportCreation in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

