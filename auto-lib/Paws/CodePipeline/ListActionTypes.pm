
package Paws::CodePipeline::ListActionTypes;
  use Moose;
  has ActionOwnerFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionOwnerFilter' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListActionTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListActionTypesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionTypes - Arguments for method ListActionTypes on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListActionTypes on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListActionTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListActionTypes.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListActionTypesOutput = $codepipeline->ListActionTypes(
      ActionOwnerFilter => 'AWS',            # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ActionTypes = $ListActionTypesOutput->ActionTypes;
    my $NextToken   = $ListActionTypesOutput->NextToken;

    # Returns a L<Paws::CodePipeline::ListActionTypesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListActionTypes>

=head1 ATTRIBUTES


=head2 ActionOwnerFilter => Str

Filters the list of action types to those created by a specified
entity.

Valid values are: C<"AWS">, C<"ThirdParty">, C<"Custom">

=head2 NextToken => Str

An identifier that was returned from the previous list action types
call, which can be used to return the next set of action types in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListActionTypes in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

