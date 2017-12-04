package Paws::DataPipeline::Query;
  use Moose;
  has Selectors => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::Selector]', request_name => 'selectors', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::Query

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::Query object:

  $service_obj->Method(Att1 => { Selectors => $value, ..., Selectors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::Query object:

  $result = $service_obj->Method(...);
  $result->Att1->Selectors

=head1 DESCRIPTION

Defines the query to run against an object.

=head1 ATTRIBUTES


=head2 Selectors => ArrayRef[L<Paws::DataPipeline::Selector>]

  List of selectors that define the query. An object must satisfy all of
the selectors to match the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

