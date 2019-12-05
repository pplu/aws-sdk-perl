package Paws::Kendra::FaqStatistics;
  use Moose;
  has IndexedQuestionAnswersCount => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::FaqStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::FaqStatistics object:

  $service_obj->Method(Att1 => { IndexedQuestionAnswersCount => $value, ..., IndexedQuestionAnswersCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::FaqStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexedQuestionAnswersCount

=head1 DESCRIPTION

Provides statistical information about the FAQ questions and answers
contained in an index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexedQuestionAnswersCount => Int

  The total number of FAQ questions and answers contained in the index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

