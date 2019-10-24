# Generated from default/object.tt
package Paws::CodePipeline::ArtifactDetails;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::CodePipeline::Types qw//;
  has MaximumCount => (is => 'ro', isa => Int, required => 1);
  has MinimumCount => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaximumCount' => {
                                   'type' => 'Int'
                                 },
               'MinimumCount' => {
                                   'type' => 'Int'
                                 }
             },
  'NameInRequest' => {
                       'MaximumCount' => 'maximumCount',
                       'MinimumCount' => 'minimumCount'
                     },
  'IsRequired' => {
                    'MaximumCount' => 1,
                    'MinimumCount' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactDetails object:

  $service_obj->Method(Att1 => { MaximumCount => $value, ..., MinimumCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumCount

=head1 DESCRIPTION

Returns information about the details of an artifact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaximumCount => Int

  The maximum number of artifacts allowed for the action type.


=head2 B<REQUIRED> MinimumCount => Int

  The minimum number of artifacts allowed for the action type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

