package Paws::SSM::PatchFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Defines a patch filter.

A patch filter consists of key/value pairs, but not all keys are valid
for all operating system types. For example, the key C<PRODUCT> is
valid for all supported operating system types. The key
C<MSRC_SEVERITY>, however, is valid only for Windows operating systems,
and the key C<SECTION> is valid only for Ubuntu operating systems.

Refer to the following sections for information about which keys may be
used with each major operating system, and which values are valid for
each key.

B<Windows Operating Systems>

The supported keys for Windows operating systems are C<PRODUCT>,
C<CLASSIFICATION>, and C<MSRC_SEVERITY>. See the following lists for
valid values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<Windows7>

=item *

C<Windows8>

=item *

C<Windows8.1>

=item *

C<Windows8Embedded>

=item *

C<Windows10>

=item *

C<Windows10LTSB>

=item *

C<WindowsServer2008>

=item *

C<WindowsServer2008R2>

=item *

C<WindowsServer2012>

=item *

C<WindowsServer2012R2>

=item *

C<WindowsServer2016>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<CriticalUpdates>

=item *

C<DefinitionUpdates>

=item *

C<Drivers>

=item *

C<FeaturePacks>

=item *

C<SecurityUpdates>

=item *

C<ServicePacks>

=item *

C<Tools>

=item *

C<UpdateRollups>

=item *

C<Updates>

=item *

C<Upgrades>

=back

I<Supported key:> C<MSRC_SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Moderate>

=item *

C<Low>

=item *

C<Unspecified>

=back

B<Ubuntu Operating Systems>

The supported keys for Ubuntu operating systems are C<PRODUCT>,
C<PRIORITY>, and C<SECTION>. See the following lists for valid values
for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<Ubuntu14.04>

=item *

C<Ubuntu16.04>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<PRIORITY>

I<Supported values:>

=over

=item *

C<Required>

=item *

C<Important>

=item *

C<Standard>

=item *

C<Optional>

=item *

C<Extra>

=back

I<Supported key:> C<SECTION>

Only the length of the key value is validated. Minimum length is 1.
Maximum length is 64.

B<Amazon Linux Operating Systems>

The supported keys for Amazon Linux operating systems are C<PRODUCT>,
C<CLASSIFICATION>, and C<SEVERITY>. See the following lists for valid
values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<AmazonLinux2012.03>

=item *

C<AmazonLinux2012.09>

=item *

C<AmazonLinux2013.03>

=item *

C<AmazonLinux2013.09>

=item *

C<AmazonLinux2014.03>

=item *

C<AmazonLinux2014.09>

=item *

C<AmazonLinux2015.03>

=item *

C<AmazonLinux2015.09>

=item *

C<AmazonLinux2016.03>

=item *

C<AmazonLinux2016.09>

=item *

C<AmazonLinux2017.03>

=item *

C<AmazonLinux2017.09>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<Security>

=item *

C<Bugfix>

=item *

C<Enhancement>

=item *

C<Recommended>

=item *

C<Newpackage>

=back

I<Supported key:> C<SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Medium>

=item *

C<Low>

=back

B<Amazon Linux 2 Operating Systems>

The supported keys for Amazon Linux 2 operating systems are C<PRODUCT>,
C<CLASSIFICATION>, and C<SEVERITY>. See the following lists for valid
values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<AmazonLinux2>

=item *

C<AmazonLinux2.0>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<Security>

=item *

C<Bugfix>

=item *

C<Enhancement>

=item *

C<Recommended>

=item *

C<Newpackage>

=back

I<Supported key:> C<SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Medium>

=item *

C<Low>

=back

B<RedHat Enterprise Linux (RHEL) Operating Systems>

The supported keys for RedHat Enterprise Linux operating systems are
C<PRODUCT>, C<CLASSIFICATION>, and C<SEVERITY>. See the following lists
for valid values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<RedhatEnterpriseLinux6.5>

=item *

C<RedhatEnterpriseLinux6.6>

=item *

C<RedhatEnterpriseLinux6.7>

=item *

C<RedhatEnterpriseLinux6.8>

=item *

C<RedhatEnterpriseLinux6.9>

=item *

C<RedhatEnterpriseLinux7.0>

=item *

C<RedhatEnterpriseLinux7.1>

=item *

C<RedhatEnterpriseLinux7.2>

=item *

C<RedhatEnterpriseLinux7.3>

=item *

C<RedhatEnterpriseLinux7.4>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<Security>

=item *

C<Bugfix>

=item *

C<Enhancement>

=item *

C<Recommended>

=item *

C<Newpackage>

=back

I<Supported key:> C<SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Medium>

=item *

C<Low>

=back

B<SUSE Linux Enterprise Server (SLES) Operating Systems>

The supported keys for SLES operating systems are C<PRODUCT>,
C<CLASSIFICATION>, and C<SEVERITY>. See the following lists for valid
values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<Suse12.0>

=item *

C<Suse12.1>

=item *

C<Suse12.2>

=item *

C<Suse12.3>

=item *

C<Suse12.4>

=item *

C<Suse12.5>

=item *

C<Suse12.6>

=item *

C<Suse12.7>

=item *

C<Suse12.8>

=item *

C<Suse12.9>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<Security>

=item *

C<Recommended>

=item *

C<Optional>

=item *

C<Feature>

=item *

C<Document>

=item *

C<Yast>

=back

I<Supported key:> C<SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Moderate>

=item *

C<Low>

=back

B<CentOS Operating Systems>

The supported keys for CentOS operating systems are C<PRODUCT>,
C<CLASSIFICATION>, and C<SEVERITY>. See the following lists for valid
values for each of these keys.

I<Supported key:> C<PRODUCT>

I<Supported values:>

=over

=item *

C<CentOS6.5>

=item *

C<CentOS6.6>

=item *

C<CentOS6.7>

=item *

C<CentOS6.8>

=item *

C<CentOS6.9>

=item *

C<CentOS7.0>

=item *

C<CentOS7.1>

=item *

C<CentOS7.2>

=item *

C<CentOS7.3>

=item *

C<CentOS7.4>

=item *

C<*>

I<Use a wildcard character (*) to target all supported operating system
versions.>

=back

I<Supported key:> C<CLASSIFICATION>

I<Supported values:>

=over

=item *

C<Security>

=item *

C<Bugfix>

=item *

C<Enhancement>

=item *

C<Recommended>

=item *

C<Newpackage>

=back

I<Supported key:> C<SEVERITY>

I<Supported values:>

=over

=item *

C<Critical>

=item *

C<Important>

=item *

C<Medium>

=item *

C<Low>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key for the filter.

See PatchFilter for lists of valid keys for each operating system type.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The value for the filter key.

See PatchFilter for lists of valid values for each key based on
operating system type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

