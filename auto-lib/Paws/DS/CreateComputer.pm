# Generated from json/callargs_class.tt

package Paws::DS::CreateComputer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_Attribute/;
  has ComputerAttributes => (is => 'ro', isa => ArrayRef[DS_Attribute], predicate => 1);
  has ComputerName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DirectoryId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OrganizationalUnitDistinguishedName => (is => 'ro', isa => Str, predicate => 1);
  has Password => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateComputer');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DS::CreateComputerResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ComputerName' => {
                                   'type' => 'Str'
                                 },
               'Password' => {
                               'type' => 'Str'
                             },
               'DirectoryId' => {
                                  'type' => 'Str'
                                },
               'ComputerAttributes' => {
                                         'class' => 'Paws::DS::Attribute',
                                         'type' => 'ArrayRef[DS_Attribute]'
                                       },
               'OrganizationalUnitDistinguishedName' => {
                                                          'type' => 'Str'
                                                        }
             },
  'IsRequired' => {
                    'ComputerName' => 1,
                    'Password' => 1,
                    'DirectoryId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateComputer - Arguments for method CreateComputer on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComputer on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method CreateComputer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComputer.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $CreateComputerResult = $ds->CreateComputer(
      ComputerName       => 'MyComputerName',
      DirectoryId        => 'MyDirectoryId',
      Password           => 'MyComputerPassword',
      ComputerAttributes => [
        {
          Name  => 'MyAttributeName',     # min: 1; OPTIONAL
          Value => 'MyAttributeValue',    # OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
      OrganizationalUnitDistinguishedName =>
        'MyOrganizationalUnitDN',         # OPTIONAL
    );

    # Results:
    my $Computer = $CreateComputerResult->Computer;

    # Returns a L<Paws::DS::CreateComputerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/CreateComputer>

=head1 ATTRIBUTES


=head2 ComputerAttributes => ArrayRef[DS_Attribute]

An array of Attribute objects that contain any LDAP attributes to apply
to the computer account.



=head2 B<REQUIRED> ComputerName => Str

The name of the computer account.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory in which to create the computer
account.



=head2 OrganizationalUnitDistinguishedName => Str

The fully-qualified distinguished name of the organizational unit to
place the computer account in.



=head2 B<REQUIRED> Password => Str

A one-time password that is used to join the computer to the directory.
You should generate a random, strong password to use for this
parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComputer in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

