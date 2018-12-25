
package Paws::AlexaForBusiness::ListSkills;
  use Moose;
  has EnablementType => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SkillGroupArn => (is => 'ro', isa => 'Str');
  has SkillType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSkills');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::ListSkillsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkills - Arguments for method ListSkills on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSkills on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListSkills.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSkills.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListSkillsResponse = $a4b->ListSkills(
      EnablementType => 'ENABLED',        # OPTIONAL
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      SkillGroupArn  => 'MyArn',          # OPTIONAL
      SkillType      => 'PUBLIC',         # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListSkillsResponse->NextToken;
    my $SkillSummaries = $ListSkillsResponse->SkillSummaries;

    # Returns a L<Paws::AlexaForBusiness::ListSkillsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListSkills>

=head1 ATTRIBUTES


=head2 EnablementType => Str

Whether the skill is enabled under the user's account, or if it
requires linking to be used.

Valid values are: C<"ENABLED">, C<"PENDING">

=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by C<MaxResults>.



=head2 SkillGroupArn => Str

The ARN of the skill group for which to list enabled skills.



=head2 SkillType => Str

Whether the skill is publicly available or is a private skill.

Valid values are: C<"PUBLIC">, C<"PRIVATE">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSkills in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

