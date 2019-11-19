# Generated from json/callargs_class.tt

package Paws::WAF::UpdateRegexPatternSet;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_RegexPatternSetUpdate/;
  has ChangeToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RegexPatternSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Updates => (is => 'ro', isa => ArrayRef[WAF_RegexPatternSetUpdate], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateRegexPatternSet');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WAF::UpdateRegexPatternSetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ChangeToken' => 1,
                    'Updates' => 1,
                    'RegexPatternSetId' => 1
                  },
  'types' => {
               'Updates' => {
                              'class' => 'Paws::WAF::RegexPatternSetUpdate',
                              'type' => 'ArrayRef[WAF_RegexPatternSetUpdate]'
                            },
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'RegexPatternSetId' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::UpdateRegexPatternSet - Arguments for method UpdateRegexPatternSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRegexPatternSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method UpdateRegexPatternSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRegexPatternSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $UpdateRegexPatternSetResponse = $waf->UpdateRegexPatternSet(
      ChangeToken       => 'MyChangeToken',
      RegexPatternSetId => 'MyResourceId',
      Updates           => [
        {
          Action             => 'INSERT',               # values: INSERT, DELETE
          RegexPatternString => 'MyRegexPatternString', # min: 1

        },
        ...
      ],

    );

    # Results:
    my $ChangeToken = $UpdateRegexPatternSetResponse->ChangeToken;

    # Returns a L<Paws::WAF::UpdateRegexPatternSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/UpdateRegexPatternSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RegexPatternSetId => Str

The C<RegexPatternSetId> of the RegexPatternSet that you want to
update. C<RegexPatternSetId> is returned by CreateRegexPatternSet and
by ListRegexPatternSets.



=head2 B<REQUIRED> Updates => ArrayRef[WAF_RegexPatternSetUpdate]

An array of C<RegexPatternSetUpdate> objects that you want to insert
into or delete from a RegexPatternSet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRegexPatternSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

