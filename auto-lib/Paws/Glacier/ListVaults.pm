
package Paws::Glacier::ListVaults;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Limit => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVaults');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::ListVaultsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListVaults - Arguments for method ListVaults on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVaults on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method ListVaults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVaults.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To list all vaults owned by the calling user's account
    # The example lists all vaults owned by the specified AWS account.
    my $ListVaultsOutput = $glacier->ListVaults(
      {
        'AccountId' => '-',
        'Limit'     => '',
        'Marker'    => ''
      }
    );

    # Results:
    my $VaultList = $ListVaultsOutput->VaultList;

    # Returns a L<Paws::Glacier::ListVaultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/ListVaults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID. This value must match the
AWS account ID associated with the credentials used to sign the
request. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you specify your account ID, do not include any hyphens ('-') in the
ID.



=head2 Limit => Str

The maximum number of vaults to be returned. The default limit is 10.
The number of vaults returned might be fewer than the specified limit,
but the number of returned vaults never exceeds the limit.



=head2 Marker => Str

A string used for pagination. The marker specifies the vault ARN after
which the listing of vaults should begin.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVaults in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

