# Generated from json/callargs_class.tt

package Paws::EMR::ListInstanceGroups;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EMR::Types qw//;
  has ClusterId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListInstanceGroups');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EMR::ListInstanceGroupsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ClusterId' => 1
                  },
  'types' => {
               'ClusterId' => {
                                'type' => 'Str'
                              },
               'Marker' => {
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

Paws::EMR::ListInstanceGroups - Arguments for method ListInstanceGroups on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstanceGroups on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ListInstanceGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstanceGroups.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListInstanceGroupsOutput = $elasticmapreduce->ListInstanceGroups(
      ClusterId => 'MyClusterId',
      Marker    => 'MyMarker',      # OPTIONAL
    );

    # Results:
    my $InstanceGroups = $ListInstanceGroupsOutput->InstanceGroups;
    my $Marker         = $ListInstanceGroupsOutput->Marker;

    # Returns a L<Paws::EMR::ListInstanceGroupsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListInstanceGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The identifier of the cluster for which to list the instance groups.



=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstanceGroups in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

