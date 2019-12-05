
package Paws::DS::DescribeLDAPSSettings;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLDAPSSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeLDAPSSettingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeLDAPSSettings - Arguments for method DescribeLDAPSSettings on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLDAPSSettings on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeLDAPSSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLDAPSSettings.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeLDAPSSettingsResult = $ds->DescribeLDAPSSettings(
      DirectoryId => 'MyDirectoryId',
      Limit       => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      Type        => 'Client',          # OPTIONAL
    );

    # Results:
    my $LDAPSSettingsInfo = $DescribeLDAPSSettingsResult->LDAPSSettingsInfo;
    my $NextToken         = $DescribeLDAPSSettingsResult->NextToken;

    # Returns a L<Paws::DS::DescribeLDAPSSettingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeLDAPSSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory.



=head2 Limit => Int

Specifies the number of items that should be displayed on one page.



=head2 NextToken => Str

The type of next token used for pagination.



=head2 Type => Str

The type of LDAP security the customer wants to enable, either server
or client. Currently supports only C<Client>, (the default).

Valid values are: C<"Client">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLDAPSSettings in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

