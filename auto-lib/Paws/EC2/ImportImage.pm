
package Paws::EC2::ImportImage {
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str');
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainers => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImageDiskContainer]', traits => ['NameInRequest'], request_name => 'DiskContainer' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has Hypervisor => (is => 'ro', isa => 'Str');
  has LicenseType => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportImage - Arguments for method ImportImage on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportImage on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ImportImage.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ImportImage.

As an example:

  $service_obj->ImportImage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Architecture => Str

  

The architecture of the virtual machine being imported (optional).










=head2 ClientData => Paws::EC2::ClientData

  

Client-specific data.










=head2 ClientToken => Str

  

The token to enable idempotency for VM import requests (optional).










=head2 Description => Str

  

A description string for the import image task (optional).










=head2 DiskContainers => ArrayRef[Paws::EC2::ImageDiskContainer]

  

=head2 DryRun => Bool

  

=head2 Hypervisor => Str

  

The target hypervisor platform to use (optional).










=head2 LicenseType => Str

  

The license type to be used for the Amazon Machine Image (AMI) after
importing (optional).

B<Note:> You may only use BYOL if you have existing licenses with
rights to use these licenses in a third party cloud like AWS. For more
information, see VM Import/Export Prerequisites in the I<Amazon Elastic
Compute Cloud User Guide for Linux>.

Valid Values: AWS | BYOL










=head2 Platform => Str

  

The operating system of the virtual machine being imported (optional).










=head2 RoleName => Str

  

The name of the role to use when not using the default role name
'vmimport' (optional).












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

