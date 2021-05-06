
package Paws::MobileHub::ExportBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'bundleId', required => 1);
  has Platform => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'platform');
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'projectId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExportBundle');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bundles/{bundleId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::ExportBundleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ExportBundle - Arguments for method ExportBundle on L<Paws::MobileHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExportBundle on the
L<AWS Mobile|Paws::MobileHub> service. Use the attributes of this class
as arguments to method ExportBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExportBundle.

=head1 SYNOPSIS

    my $mobile = Paws->service('MobileHub');
    my $ExportBundleResult = $mobile->ExportBundle(
      BundleId  => 'MyBundleId',
      Platform  => 'OSX',            # OPTIONAL
      ProjectId => 'MyProjectId',    # OPTIONAL
    );

    # Results:
    my $DownloadUrl = $ExportBundleResult->DownloadUrl;

    # Returns a L<Paws::MobileHub::ExportBundleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mobile/ExportBundle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleId => Str

Unique bundle identifier.



=head2 Platform => Str

Developer desktop or target application platform.

Valid values are: C<"OSX">, C<"WINDOWS">, C<"LINUX">, C<"OBJC">, C<"SWIFT">, C<"ANDROID">, C<"JAVASCRIPT">

=head2 ProjectId => Str

Unique project identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExportBundle in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

