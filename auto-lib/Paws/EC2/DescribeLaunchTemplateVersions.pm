
package Paws::EC2::DescribeLaunchTemplateVersions;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MaxVersion => (is => 'ro', isa => 'Str');
  has MinVersion => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'LaunchTemplateVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLaunchTemplateVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeLaunchTemplateVersionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeLaunchTemplateVersions - Arguments for method DescribeLaunchTemplateVersions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLaunchTemplateVersions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeLaunchTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLaunchTemplateVersions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeLaunchTemplateVersionsResult =
      $ec2->DescribeLaunchTemplateVersions(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      LaunchTemplateId   => 'MyString',                # OPTIONAL
      LaunchTemplateName => 'MyLaunchTemplateName',    # OPTIONAL
      MaxResults         => 1,                         # OPTIONAL
      MaxVersion         => 'MyString',                # OPTIONAL
      MinVersion         => 'MyString',                # OPTIONAL
      NextToken          => 'MyString',                # OPTIONAL
      Versions           => [
        'MyString', ...                                # OPTIONAL
      ],                                               # OPTIONAL
      );

    # Results:
    my $LaunchTemplateVersions =
      $DescribeLaunchTemplateVersionsResult->LaunchTemplateVersions;
    my $NextToken = $DescribeLaunchTemplateVersionsResult->NextToken;

    # Returns a L<Paws::EC2::DescribeLaunchTemplateVersionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeLaunchTemplateVersions>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<create-time> - The time the launch template version was created.

=item *

C<ebs-optimized> - A boolean that indicates whether the instance is
optimized for Amazon EBS I/O.

=item *

C<iam-instance-profile> - The ARN of the IAM instance profile.

=item *

C<image-id> - The ID of the AMI.

=item *

C<instance-type> - The instance type.

=item *

C<is-default-version> - A boolean that indicates whether the launch
template version is the default version.

=item *

C<kernel-id> - The kernel ID.

=item *

C<ram-disk-id> - The RAM disk ID.

=back




=head2 LaunchTemplateId => Str

The ID of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 LaunchTemplateName => Str

The name of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<NextToken>
value. This value can be between 1 and 200.



=head2 MaxVersion => Str

The version number up to which to describe launch template versions.



=head2 MinVersion => Str

The version number after which to describe launch template versions.



=head2 NextToken => Str

The token to request the next page of results.



=head2 Versions => ArrayRef[Str|Undef]

One or more versions of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLaunchTemplateVersions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

