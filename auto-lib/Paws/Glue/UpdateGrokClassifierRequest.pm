package Paws::Glue::UpdateGrokClassifierRequest;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str');
  has CustomPatterns => (is => 'ro', isa => 'Str');
  has GrokPattern => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateGrokClassifierRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::UpdateGrokClassifierRequest object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::UpdateGrokClassifierRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

Specifies a grok classifier to update when passed to
C<UpdateClassifier>.

=head1 ATTRIBUTES


=head2 Classification => Str

  An identifier of the data format that the classifier matches, such as
Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.


=head2 CustomPatterns => Str

  Optional custom grok patterns used by this classifier.


=head2 GrokPattern => Str

  The grok pattern used by this classifier.


=head2 B<REQUIRED> Name => Str

  The name of the C<GrokClassifier>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

