# Generated from json/callargs_class.tt

package Paws::LakeFormation::GetEffectivePermissionsForPath;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::LakeFormation::Types qw//;
  has CatalogId => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetEffectivePermissionsForPath');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LakeFormation::GetEffectivePermissionsForPathResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CatalogId' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::GetEffectivePermissionsForPath - Arguments for method GetEffectivePermissionsForPath on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEffectivePermissionsForPath on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method GetEffectivePermissionsForPath.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEffectivePermissionsForPath.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $GetEffectivePermissionsForPathResponse =
      $lakeformation->GetEffectivePermissionsForPath(
      ResourceArn => 'MyResourceArnString',
      CatalogId   => 'MyCatalogIdString',     # OPTIONAL
      MaxResults  => 1,                       # OPTIONAL
      NextToken   => 'MyToken',               # OPTIONAL
      );

    # Results:
    my $NextToken   = $GetEffectivePermissionsForPathResponse->NextToken;
    my $Permissions = $GetEffectivePermissionsForPathResponse->Permissions;

# Returns a L<Paws::LakeFormation::GetEffectivePermissionsForPathResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/GetEffectivePermissionsForPath>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The identifier for the Data Catalog. By default, the account ID. The
Data Catalog is the persistent metadata store. It contains database
definitions, table definitions, and other control information to manage
your AWS Lake Formation environment.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve this
list.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which you want to
get permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEffectivePermissionsForPath in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

