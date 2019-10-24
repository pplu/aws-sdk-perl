# Generated from default/object.tt
package Paws::CloudSearch::AnalysisScheme;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_AnalysisOptions/;
  has AnalysisOptions => (is => 'ro', isa => CloudSearch_AnalysisOptions);
  has AnalysisSchemeLanguage => (is => 'ro', isa => Str, required => 1);
  has AnalysisSchemeName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AnalysisOptions' => {
                                      'class' => 'Paws::CloudSearch::AnalysisOptions',
                                      'type' => 'CloudSearch_AnalysisOptions'
                                    },
               'AnalysisSchemeLanguage' => {
                                             'type' => 'Str'
                                           },
               'AnalysisSchemeName' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'AnalysisSchemeLanguage' => 1,
                    'AnalysisSchemeName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::AnalysisScheme

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::AnalysisScheme object:

  $service_obj->Method(Att1 => { AnalysisOptions => $value, ..., AnalysisSchemeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::AnalysisScheme object:

  $result = $service_obj->Method(...);
  $result->Att1->AnalysisOptions

=head1 DESCRIPTION

Configuration information for an analysis scheme. Each analysis scheme
has a unique name and specifies the language of the text to be
processed. The following options can be configured for an analysis
scheme: C<Synonyms>, C<Stopwords>, C<StemmingDictionary>,
C<JapaneseTokenizationDictionary> and C<AlgorithmicStemming>.

=head1 ATTRIBUTES


=head2 AnalysisOptions => CloudSearch_AnalysisOptions

  


=head2 B<REQUIRED> AnalysisSchemeLanguage => Str

  


=head2 B<REQUIRED> AnalysisSchemeName => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

