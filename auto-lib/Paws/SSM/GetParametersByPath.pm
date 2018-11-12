
package Paws::SSM::GetParametersByPath;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterFilters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ParameterStringFilter]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Recursive => (is => 'ro', isa => 'Bool');
  has WithDecryption => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersByPath');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetParametersByPathResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersByPath - Arguments for method GetParametersByPath on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersByPath on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetParametersByPath.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersByPath.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetParametersByPathResult = $ssm->GetParametersByPath(
      Path             => 'MyPSParameterName',
      MaxResults       => 1,                     # OPTIONAL
      NextToken        => 'MyNextToken',         # OPTIONAL
      ParameterFilters => [
        {
          Key    => 'MyParameterStringFilterKey',    # min: 1, max: 132
          Option => 'MyParameterStringQueryOption',  # min: 1, max: 10; OPTIONAL
          Values => [
            'MyParameterStringFilterValue', ...      # min: 1, max: 1024
          ],                                         # min: 1, max: 50; OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      Recursive      => 1,                           # OPTIONAL
      WithDecryption => 1,                           # OPTIONAL
    );

    # Results:
    my $NextToken  = $GetParametersByPathResult->NextToken;
    my $Parameters = $GetParametersByPathResult->Parameters;

    # Returns a L<Paws::SSM::GetParametersByPathResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetParametersByPath>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]

Filters to limit the request results.

You can't filter using the parameter name.



=head2 B<REQUIRED> Path => Str

The hierarchy for the parameter. Hierarchies start with a forward slash
(/) and end with the parameter name. A parameter name hierarchy can
have a maximum of 15 levels. Here is an example of a hierarchy:
C</Finance/Prod/IAD/WinServ2016/license33>



=head2 Recursive => Bool

Retrieve all parameters within a hierarchy.

If a user has access to a path, then the user can access all levels of
that path. For example, if a user has permission to access path /a,
then the user can also access /a/b. Even if a user has explicitly been
denied access in IAM for parameter /a, they can still call the
GetParametersByPath API action recursively and view /a/b.



=head2 WithDecryption => Bool

Retrieve all parameters in a hierarchy with their value decrypted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersByPath in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

