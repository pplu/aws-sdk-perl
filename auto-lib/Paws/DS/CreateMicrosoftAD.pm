
package Paws::DS::CreateMicrosoftAD;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Edition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has ShortName => (is => 'ro', isa => 'Str');
  has VpcSettings => (is => 'ro', isa => 'Paws::DS::DirectoryVpcSettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMicrosoftAD');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::CreateMicrosoftADResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateMicrosoftAD - Arguments for method CreateMicrosoftAD on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMicrosoftAD on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method CreateMicrosoftAD.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMicrosoftAD.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $CreateMicrosoftADResult = $ds->CreateMicrosoftAD(
      Name        => 'MyDirectoryName',
      Password    => 'MyPassword',
      VpcSettings => {
        SubnetIds => [ 'MySubnetId', ... ],
        VpcId     => 'MyVpcId',

      },
      Description => 'MyDescription',           # OPTIONAL
      Edition     => 'Enterprise',              # OPTIONAL
      ShortName   => 'MyDirectoryShortName',    # OPTIONAL
    );

    # Results:
    my $DirectoryId = $CreateMicrosoftADResult->DirectoryId;

    # Returns a L<Paws::DS::CreateMicrosoftADResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/CreateMicrosoftAD>

=head1 ATTRIBUTES


=head2 Description => Str

A textual description for the directory. This label will appear on the
AWS console C<Directory Details> page after the directory is created.



=head2 Edition => Str

AWS Managed Microsoft AD is available in two editions: Standard and
Enterprise. Enterprise is the default.

Valid values are: C<"Enterprise">, C<"Standard">

=head2 B<REQUIRED> Name => Str

The fully qualified domain name for the directory, such as
C<corp.example.com>. This name will resolve inside your VPC only. It
does not need to be publicly resolvable.



=head2 B<REQUIRED> Password => Str

The password for the default administrative user named C<Admin>.



=head2 ShortName => Str

The NetBIOS name for your domain. A short identifier for your domain,
such as C<CORP>. If you don't specify a NetBIOS name, it will default
to the first part of your directory DNS. For example, C<CORP> for the
directory DNS C<corp.example.com>.



=head2 B<REQUIRED> VpcSettings => L<Paws::DS::DirectoryVpcSettings>

Contains VPC information for the CreateDirectory or CreateMicrosoftAD
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMicrosoftAD in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

