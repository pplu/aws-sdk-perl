
package Paws::CloudSearchDomain::Suggest;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudSearchDomain::Types qw//;
  has Query => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Size => (is => 'ro', isa => Int, predicate => 1);
  has Suggester => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'Suggest');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2013-01-01/suggest?format=sdk&pretty=true');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudSearchDomain::SuggestResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Suggester' => {
                                'type' => 'Str'
                              },
               'Query' => {
                            'type' => 'Str'
                          },
               'Size' => {
                           'type' => 'Int'
                         }
             },
  'ParamInQuery' => {
                      'Suggester' => 'suggester',
                      'Query' => 'q',
                      'Size' => 'size'
                    },
  'IsRequired' => {
                    'Suggester' => 1,
                    'Query' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::Suggest - Arguments for method Suggest on L<Paws::CloudSearchDomain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Suggest on the
L<Amazon CloudSearch Domain|Paws::CloudSearchDomain> service. Use the attributes of this class
as arguments to method Suggest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Suggest.

=head1 SYNOPSIS

    my $cloudsearchdomain = Paws->service('CloudSearchDomain');
    my $SuggestResponse = $cloudsearchdomain->Suggest(
      Query     => 'MyQuery',
      Suggester => 'MySuggester',
      Size      => 1,               # OPTIONAL
    );

    # Results:
    my $Status  = $SuggestResponse->Status;
    my $Suggest = $SuggestResponse->Suggest;

    # Returns a L<Paws::CloudSearchDomain::SuggestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearchdomain/Suggest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Query => Str

Specifies the string for which you want to get suggestions.



=head2 Size => Int

Specifies the maximum number of suggestions to return.



=head2 B<REQUIRED> Suggester => Str

Specifies the name of the suggester to use to find suggested matches.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Suggest in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

